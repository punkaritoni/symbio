from typing import List


def write_to_file(content: List[int], filename: str = "numbers.txt") -> None:
    """Write given content to file"""
    with open(filename, "w") as f:
        for num in content:
            f.write(str(num) + "\n")

def generate_content(from_num: int = 1, to_num: int = 100) -> List[int]:
    """Return a list of numbers from given range"""
    numbers = list(range(from_num,to_num + 1))
    print(f"All numbers from {from_num} to {to_num}:\n{numbers}\n")
    return numbers

def read_from_file(filename: str = "numbers.txt") -> List[int]:
    """Read file and return content (int) as a list"""
    with open(filename, "r") as f:
        num_list = []
        for line in f.readlines():
            num_list.append(int(line.rstrip("\n")))
    return num_list

def log_content(content:List[int]) -> None:
    """Print half of the content given as input"""
    for index in range(int(len(content)/2)):
        print(f"Value {index +1} = {content[index]}")

def main():
    """Main entry point"""
    write_to_file(generate_content(1,100))
    log_content(read_from_file())


if __name__ == "__main__":
    main()
