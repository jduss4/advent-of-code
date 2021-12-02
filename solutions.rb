class Solutions

  def initialize(dir_path)
    @dir_path = dir_path
    @input = get_input
  end

  def file_name
    "input.txt"
  end

  def file_path
    File.join(@dir_path, file_name)
  end

  def read_file
    File.read(file_path)
  end

  def get_input
    read_file.split("\n")
  end
end
