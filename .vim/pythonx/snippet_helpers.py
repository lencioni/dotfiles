import re

def pascalCase(basename):
    cleaned_name = re.sub('\.js$', '', basename or 'ModuleName')
    return ''.join(x.title() for x in cleaned_name.split('_'))
