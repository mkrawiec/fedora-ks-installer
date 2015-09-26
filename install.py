#!/usr/bin/env python3

import os
from subprocess import call
from functions import (prompt_simple, prompt_yes_no, raw_data, allowed_values,
                       parser_yes_no, SettingsRegistry, render)


def main():
    curr_dir = os.path.dirname(os.path.abspath(__file__))
    tpl_dir = os.path.join(curr_dir, 'templates')
    result_file = os.path.join(curr_dir, 'main.ks')

    settings = SettingsRegistry()

    settings.add('fedora_version', {
        'label': 'Choose Fedora version for the base system (22)',
        'prompt_type': prompt_simple,
        'default': '22',
        'parser': allowed_values(['22'])
    })

    settings.add('hostname', {
        'label': 'Enter hostname',
        'prompt_type': prompt_simple,
        'default': 'linux',
        'parser': raw_data
    })

    settings.add('installation_flavour', {
        'label': 'Choose installation flavour (basic/kde)',
        'prompt_type': prompt_simple,
        'default': 'kde',
        'parser': allowed_values(['basic', 'kde'])
    })

    settings.add('nvidia_drivers', {
        'label': 'Do you want proprietary nVidia drivers?',
        'prompt_type': prompt_yes_no,
        'default': 'n',
        'parser': parser_yes_no
    })

    settings.render_all_prompts()
    render(settings.get(), tpl_dir, result_file)
    call(['sudo', 'anaconda', '--kickstart=' + result_file])

if __name__ == '__main__':
    main()
