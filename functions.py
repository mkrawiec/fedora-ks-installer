from collections import OrderedDict
from jinja2 import Environment, FileSystemLoader


# Prompts
def prompt_simple(label, default):
    text = '{} [{}]: '.format(label, default)
    return input(text)


def prompt_yes_no(label, default):
    default_label = 'Y/n' if default is 'y' else 'y/N'
    return prompt_simple(label, default_label)


# Parsers callbacks
# They get user input as lower case and return parsed value
# If user input whas blank they get default value
def raw_data(user_input):
    return user_input


def parser_yes_no(user_input):
    if user_input == 'y':
        return True
    elif user_input == 'n':
        return False
    else:
        raise ValueError


def allowed_values(values):
    def parser(user_input):
        if user_input in map(str.lower, values):
            return user_input
        else:
            raise ValueError

    return parser


class SettingsRegistry(object):
    registry = OrderedDict()

    def add(self, k, v):
        self.registry[k] = v

    def render_prompt(self, v):
        user_input = v['prompt_type'](v['label'], v['default'])
        self.parse_input(v, user_input)

    def parse_input(self, v, user_input):
        if not user_input:
            user_input = v['default']

        try:
            input_str = str(user_input).lower()
            v['parsed'] = v['parser'](input_str)
        except ValueError:
            self.render_prompt(v)

    def render_all_prompts(self):
        for v in self.registry.values():
            self.render_prompt(v)

    def get(self):
        return {key: value['parsed'] for key, value in self.registry.items()}


def render(vars, tpl_dir, result_file):
    env = Environment(
            loader=FileSystemLoader(tpl_dir),
            trim_blocks=True,
            line_statement_prefix=None,
            line_comment_prefix=None,
    )

    contents = env.get_template('main.ks.tpl').render(vars)

    with open(result_file, 'w') as f:
        f.write(contents)
