def scandir(path)
  folder = []
  jmlFile = 0
  Dir.entries(path).select {|f| 
    # p f if  !File.directory? f
    # p f
    # save ke array
    # if (File.directory?(f))
    #     p "#{f} adalah file"
    #     folder << f
    # else
    #   p "#{f} adalah folder"
    #   jmlFile +=1
    # end

  }

  # p "jumlah folder #{folder.size}"
  # p "jumlah file  #{jmlFile}"
  # print folder
end

def coba2(path)
  Dir.foreach(path) do |file|
    p file
  end
end

def coba3(path)
  Dir.entries("your/folder").select {|f| !File.directory? f}
end

def get_path_content(dir)
    queue = Queue.new
    result = []
    queue << dir
    until queue.empty?
      current = queue.pop
      Dir.entries(current).each { |file|
        full_name = File.join(current, file)
        if not (File.directory? full_name)
          result << full_name
        elsif file != '.' and file != '..'
            queue << full_name
        end
      }
    end
    p result
end

path = 'test'
scandir(path)