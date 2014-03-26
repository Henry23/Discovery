module ReciboHelper
  
  
  def is_Available?
    
    Recibo.all.each do |t|
     
      if t.asiento?(1)
        "Available"
      else
        "NotAvailable"
      end
    end
    
  end
  
end
