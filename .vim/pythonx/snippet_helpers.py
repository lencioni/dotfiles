import re


def pascal_case_basename(basename):
    cleaned_name = re.sub('(_spec)?(\.js$)?', '', basename or 'ModuleName')
    return ''.join(x.title() for x in cleaned_name.split('_'))


def dasherize_basename(basename):
    cleaned_name = re.sub('\.css$', '', basename or 'module-name')
    return '-'.join(filter(None, cleaned_name.split('_')))


def complete(text, opts):
    if text:
        opts = [m[len(text):] for m in opts if m.startswith(text)]
    if len(opts) == 1:
        return opts[0]
    return '(' + '|'.join(opts) + ')'
