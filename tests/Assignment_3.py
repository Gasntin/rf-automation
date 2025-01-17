def sort_even_odd(arr):
    even_numbers = []
    for num in arr:
        if num % 2 == 0:
            even_numbers.append(num)
    even_numbers.sort(reverse=True)

    odd_numbers = []
    for num in arr:
        if num % 2 != 0:
            odd_numbers.append(num)
    odd_numbers.sort(reverse=True)

    return even_numbers + odd_numbers

input_array = [3, 2, 5, 1, 8, 9, 6]
output_array = sort_even_odd(input_array)

print(output_array)