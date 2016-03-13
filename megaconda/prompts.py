def simple(label, default):
    text = '{} [{}]: '.format(label, default)
    return input(text)


def yes_no(label, default):
    default_label = 'Y/n' if default is 'y' else 'y/N'
    return simple(label, default_label)
