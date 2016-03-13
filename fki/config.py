from collections import OrderedDict
from configparser import ConfigParser


class Config(object):

    def __init__(self, filename):
        config = ConfigParser()
        config.read(filename)
        required_keys = ['label', 'type', 'default', 'parser']
        result = OrderedDict()

        for section in config.sections():
            raw_dict = dict(config.items(section))
            result[section] = {key: raw_dict[key] for key in required_keys}
            args = set(result[section]) ^ set(raw_dict)
            result[section]['args'] = {key: raw_dict[key] for key in args}

        self.result = result

    def get_data(self):
        return self.result
