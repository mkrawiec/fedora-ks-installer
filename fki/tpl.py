from jinja2 import Environment, FileSystemLoader


def render_tpl(vars, tpl_dir, result_file):
    env = Environment(
        loader=FileSystemLoader(tpl_dir),
        trim_blocks=True,
        line_statement_prefix=None,
        line_comment_prefix=None,
    )

    contents = env.get_template('main.ks.tpl').render(vars)

    with open(result_file, 'w') as f:
        f.write(contents)
