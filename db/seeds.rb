# char_1000 and char_100 are 2 local variables with content of 1000 and 100 characters respectively.

char_1000 = "A computer is a device that can be instructed to carry out an arbitrary set of arithmetic or logical operations automatically. The ability of computers to follow a sequence of operations, called a program, make computers very applicable to a wide range of tasks. Such computers are used as control systems for a very wide variety of industrial and consumer devices. This includes simple special purpose devices like microwave ovens and remote controls, factory devices such as industrial robots and computer assisted design, but also in general purpose devices like personal computers and mobile devices such as smartphones. The Internet is run on computers and it connects millions of other computers.                                                                                                                     Since ancient times, simple manual devices like the abacus aided people in doing calculations. Early in the Industrial Revolution, some mechanical devices were built to automate long tedious tasks, such as guiding patterns for looms. More sophisticated electrical machines did specialized analog calculations in the early 20th century. The first digital electronic calculating machines were developed during World War II. The speed, power, and versatility of computers has increased continuously and dramatically since then."

char_100 = "A computer is a device that can be instructed to carry out an arbitrary set of arithmetic or logical operations automatically."


(1..6).each do |ind|
  if ind==4
    (1..5).each do |same_index|
      Complaint.create(user_email: 'text_user_'+ind.to_s+'@gmail.com', content: [char_1000, char_100].sample )
    end
  else
    Complaint.create(user_email: 'text_user_'+ind.to_s+'@gmail.com', content: [char_1000, char_100].sample )
  end
end
