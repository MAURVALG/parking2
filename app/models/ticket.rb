class Ticket < ApplicationRecord

validates :plate, format: {with: /\A[A-Z]{3}[0-9]{3}\z/, message: "Plate no valid, must CCC000"}


validates :plate,
           presence: true,
           length: { minimun: 6 },
           length: { maximum: 6 }

validates :vtype,
            presence: true,
            length: { minimun: 1},
            length: { maximum: 10 }


end
