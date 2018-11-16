class Mission < ApplicationRecord

  validates:content,{presence:true,length:{maximum:140}}

end
