require "pathname"

$folder = Array.new
$jmlFile = 0
def rec_path(path, file= false)
    
    path.children.collect do |child|
      if file and child.file?
        child
        $jmlFile +=1
      elsif child.directory?
        $folder << child
        rec_path(child, file) + [child]
      end
    end.select { |x| x }.flatten(1)
end

def coba3(path)
    p Dir["#{path}/**/**/"]
end

def countFiles(folder)
  p Dir["#{folder}/**/*"].length
end

def scandir(path)
    folder = []
    jmlFile = 0
    Dir.each_child(path) { |file| 
        
        p "#{file} adala sebuah directory" 

    #     # if (File.directory?file)
    #     #     puts "#{file} adalah direktori"
    #     # else
    #     #     puts "#{file} adalah file"
    #     # end

    #     # save ke array
    #     # if (File.directory?(file))
    #     #     folder << file
    #     # else
    #     #     jmlFile += 1
    #     # end 
    }

    # puts "jumlah folder #{folder.size} "
    # puts "jumlah file #{jmlFile} "
    
end

# path = 'C:\Users\nuna\Documents\RUBY-DEV\DropsuiteTest'
print "Input Path: "
input = gets.strip
rec_path(Pathname.new(input), true)
i=0
while i<$folder.length
  puts $folder[i]
  i = i+1
end
p $jmlFile