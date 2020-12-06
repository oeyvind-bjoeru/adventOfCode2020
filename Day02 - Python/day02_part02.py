with open('Day02 - Python/day02_input.txt') as file:
    inputs = file.read().split('\n')

valid = list()
for input in inputs:
    policy, password = map(str.strip, input.split(':'))

    min, max = int(policy.split('-')[0]), int(policy.split('-')[1].split(' ')[0])
    letter = policy.split('-')[1].split(' ')[1]

    if (password[min - 1:min] == letter) is not (password[max - 1:max] == letter):
        valid.append(password.strip())

print('Answer: ', len(valid))