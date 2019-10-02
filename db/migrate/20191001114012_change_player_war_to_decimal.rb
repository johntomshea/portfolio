class ChangePlayerWarToDecimal < ActiveRecord::Migration[5.2]
  def self.up
      change_table :players do |t|
        t.change :war, :decimal, :precision => 2, :scale => 1
      end
  end
end
