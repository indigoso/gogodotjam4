CYCLE = 8

def update_version(version_string: str) -> str:
    (major, minor, patch) = (int(version_string[1]), int(version_string[3]), int(version_string[5]))
    if patch < CYCLE:
        patch += 1
        return f'"{major}.{minor}.{patch}"'
    else:
        patch = 0
    if minor < CYCLE:
        minor += 1
        return f'"{major}.{minor}.{patch}"'
    else:
        minor = 0
    major += 1
    return f'"{major}.{minor}.{patch}"'

with open('Global Scripts/constants.gd', 'r') as constants:
    data = constants.readlines()

version = ''
idx = 0


for (index, line) in enumerate(data):
    if 'const GAME_VERSION' in line:
        version = line
        idx = index
        break

ver = update_version(version[21:28])

next_ver = version[:len(version) - 8] + ver + '\n'

data[idx] = next_ver


with open('Global Scripts/constants.gd', 'w') as constants:
    constants.writelines(data)