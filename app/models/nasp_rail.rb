# encoding: utf-8
require 'valid_email'

class NaspRail < ActiveRecord::Base
    include ActiveModel::Validations
    attr_accessor :email
    validates :id_transacao, :uniqueness => true, :format => { :with => /^\w+$/i, :message => "Apenas numeros e letras"}
    validates_numericality_of :valor, :only_integer => true, :message => "Apenas numero inteiro"
    validates :status_pagamento, :inclusion => { :in => 1..6, :message => "Apenas numero inteiro de 1 à 6"}
    validates_numericality_of :cod_moip, :inclusion => {:in => 0..99999999999999999999, :message => "Apenas numero inteiro no máximo 20 digitos"}
    validates_numericality_of :forma_pagamento, :only_integer => true, :message => "Apenas numero inteiro"
    validates_format_of :tipo_pagamento, :with => /(DebitoBancario|FinanciamentoBancario|BoletoBancario|CartaoDeCredito|CarteiraMoIP|CartaoDeDebito)/, :message => "Apenas DebitoBancario, FinanciamentoBancario, BoletoBancario, CartaoDeCredito, CarteiraMoIP ou CartaoDeDebito"
    validates :email_consumidor, :presence => true, :email => true
end
