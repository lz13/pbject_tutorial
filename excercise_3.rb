class Member
  attr_accessor :full_name

  def initialize(full_name)
    @full_name = full_name
  end
end

class Student < Member
  attr_accessor :about

  def initialize(full_name, about)
    super(full_name)
    @about = about
  end
end

class Coach < Member
  attr_accessor :bio, :skills

  def initialize(full_name, bio, skills)
    super(full_name)
    @bio = bio
    @skills = skills
  end
end

class Workshop
  attr_accessor :date, :venue, :coaches, :students
  
  def initialize(date, venue_name, start_time)
    @date = date
    @venue_name = venue_name
    @start_time = start_time
    @coaches = []
    @students = []
  end

  def add_participant(member)
    if member.is_a?(Coach)
      @coaches << member
    elsif member.is_a?(Student)
      @students << member
    else
      puts "Invalid member type"
    end
  end

  def print_details
    puts workshop_details
    puts
    print_students
    puts
    print_coaches
  end

  private

  def workshop_details
    "Workshop at #{@venue_name} on #{@date} starting at #{@start_time}"
  end

  def print_students
    puts "Students:"
    students.each do |student|
      puts "#{student.full_name} - #{student.about}"
    end
  end

  def print_coaches
    puts "Coaches:"
    coaches.each do |coach|
      puts "#{coach.full_name} - #{coach.skills}"
      puts "#{      coach.bio}"
    end
  end
end

workshop = Workshop.new("12/03/2014", "Shut1", "1:00 PM")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.", "HTML, JavaScript")
# vicky.add_skill("HTML")
# vicky.add_skill("JavaScript")
nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love", "Ruby")
# nicole.add_skill("Ruby")

workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)
workshop.print_details

