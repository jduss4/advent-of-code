class Solutions

  def initialize(dir_path)
    @dir_path = dir_path
    @input = get_input
  end

  def file_path
    File.join(@dir_path, "input.txt")
  end

  def read_file
    File.read(file_path)
  end

  def get_input
    read_file.split("\n").map(&:to_i)
  end
end
