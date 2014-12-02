import re

def pascal_case_basename(basename):
    cleaned_name = re.sub('\.js$', '', basename or 'ModuleName')
    return ''.join(x.title() for x in cleaned_name.split('_'))
