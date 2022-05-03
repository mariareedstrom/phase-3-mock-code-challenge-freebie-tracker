class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    !!self.freebies.find_by(item_name: item_name)
  end

  def give_away(new_dev, freebie)
    if freebie.dev_id == self.id
      freebie.update(dev: new_dev)
    else
      puts 'Sorry, this is not yours to give away'
    end
  end

end


