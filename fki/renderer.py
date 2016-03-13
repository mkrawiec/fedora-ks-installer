from importlib import import_module
from functools import partial


class PromptRenderer(object):

    def load_prompts(self, source):
        self.registry = source

    def render_all(self):
        for v in self.registry.values():
            self.render_prompt(v)

    def get_input(self):
        return {key: value['parsed'] for key, value in self.registry.items()}

    def render_prompt(self, v):
        call_prompt = partial(self.call, 'prompt')
        user_input = call_prompt(v['type'], v['label'], v['default'])

        self.parse_input(v, user_input)

    def parse_input(self, v, user_input):
        if not user_input:
            user_input = v['default']

        try:
            call_parser = partial(self.call, 'parser')
            v['parsed'] = call_parser(v['parser'], str(user_input),
                                      **v['args'])
        except ValueError:
            print("[!] Invalid input value")
            self.render_prompt(v)

    def call(self, type, variant, *args, **kwargs):
        module = import_module('.{0}s'.format(type), 'fki')
        func = getattr(module, variant)

        return func(*args, **kwargs)
