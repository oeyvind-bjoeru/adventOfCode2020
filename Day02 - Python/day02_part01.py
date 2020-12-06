with open('Day02 - Python/day02_input.txt') as file:
    inputs = file.read().split('\n')

valid = list()
for input in inputs:
    policy, password = input.split(':')
    min, max = int(policy.split('-')[0]), int(policy.split('-')[1].split(' ')[0])
    letter = policy.split('-')[1].split(' ')[1]
    letterCount = password.strip().count(letter)
    if letterCount >= min and letterCount <= max: valid.append(password.strip())

print('Answer: ', len(valid))