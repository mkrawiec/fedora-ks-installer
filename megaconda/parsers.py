import os


def raw_data(user_input):
    return user_input


def yes_no(user_input):
    lowercase = user_input.lower()
    if lowercase == 'y':
        return True
    elif lowercase == 'n':
        return False
    else:
        raise ValueError


def allowed_values(user_input, values=''):
    if user_input in values:
        return user_input
    else:
        raise ValueError


def path_exists(user_input, prefix='', suffix=''):
    path = os.path.join(prefix, user_input) + suffix
    if os.path.exists(path):
        return user_input
    else:
        raise ValueError
