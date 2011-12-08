class CreateNaspRails < ActiveRecord::Migration
  def change
    create_table :nasp_rails do |t|
      t.string :id_transacao, :limit => 32
      t.integer :valor
      t.integer :status_pagamento
      t.integer :cod_moip, :limit => 20
      t.integer :forma_pagamento
      t.string :tipo_pagamento, :limit => 32
      t.string :email_consumidor

      t.timestamps
    end
  end
end
