from collections import OrderedDict
from configparser import ConfigParser


class PromptData(object):

    def __init__(self, filename):
        parser = ConfigParser()
        parser.read(filename)
        required_keys = ['label', 'type', 'default', 'parser']
        result = OrderedDict()

        for section in parser.sections():
            raw_dict = dict(parser.items(section))
            result[section] = {key: raw_dict[key] for key in required_keys}
            args = set(result[section]) ^ set(raw_dict)
            result[section]['args'] = {key: raw_dict[key] for key in args}

        self.result = result

    def get_data(self):
        return self.result


class ConstData(object):

    def __init__(self, filename):
        parser = ConfigParser()
        parser.read(filename)

        self.result = dict(parser.items('consts'))

    def get_data(self):
        return self.result
