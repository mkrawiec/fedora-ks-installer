from collections import defaultdict

from jinja2 import nodes
from jinja2.ext import Extension


class PostExtension(Extension):

    tags = ['post', 'renderpost']

    def __init__(self, environment):
        super(PostExtension, self).__init__(environment)

        environment.extend(
            post_fragments=defaultdict(list)
        )

    def parse(self, parser):
        if parser.stream.current.test('name:renderpost'):
            line_no = next(parser.stream).lineno
            return nodes.Output([self.call_method('render_fragments')])\
                        .set_lineno(line_no)
        else:
            line_no = next(parser.stream).lineno
            args = [parser.parse_expression()]
            body = parser.parse_statements(['name:endpost'], drop_needle=True)

            return nodes.CallBlock(self.call_method('store_fragment', args),
                                   [], [], body).set_lineno(line_no)

    def store_fragment(self, priority, caller):
        fragments = self.environment.post_fragments
        fragment_body = caller()
        fragments[int(priority)].append(fragment_body)

        return str()

    def render_fragments(self):
        fragments = self.environment.post_fragments
        priorities_sorted = sorted(fragments.keys())
        prioritized = []

        for priority in priorities_sorted:
            prioritized.extend(fragments[priority])

        return '\n'.join(prioritized)
