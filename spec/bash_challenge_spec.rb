describe "Bash Challenge" do
  context 'Navigation' do
    it 'determines what the current working directory is' do
      your_answer = "pwd"
      expect(your_answer).to eq(answer_1) 
    end

    it 'changes directory up one level' do 
      your_answer = "cd .."
      expect(your_answer).to eq(answer_2)
    end

    it 'lists the contents of the working directory' do 
      your_answer = "ls"
      expect(your_answer).to eq(answer_3)
    end

    it 'brings us back to the home directory' do 
      your_answer = "cd ~"
      expect(your_answer).to satisfy {|s| answer_4.include?(s.downcase) }
    end
  end

  context 'Commands' do 
    it 'it creates a new filed called "text.html"' do
      your_answer = "touch text.html"
      expect(your_answer).to eq(answer_5)
    end

    it "write the command that results in seven columns for the contents of a directory:
      1) permissions
      2) number of hard links
      3) owner
      4) group owning
      5) file size
      6) date and time of last modification
      7) file name

      For instance:
      -rw-r--r--   1 janedoe  staff    52B Jan  5 12:42 .rspec
      -rw-r--r--   1 janedoe  staff   1.2K Jan  5 12:42 README.md
      drwxr-xr-x   4 janedoe  staff   136B Jan  5 12:42 spec" do

      your_answer = "ls -lah"
      expect(your_answer).to eq(answer_6)
    end

    it 'opens a file called "readme.md" in its default format' do 
      your_answer = "open readme.md"
      expect(your_answer).to eq(answer_7)
    end

    it 'shows us what our path is' do 
      your_answer = "echo $PATH"
      expect(your_answer).to eq(answer_8)
    end

    it 'makes a new directory called "code"' do 
      your_answer = "mkdir code"
      expect(your_answer).to eq(answer_9)
    end
  end
end
