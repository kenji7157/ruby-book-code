class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    # ticketのインスタンスメソッドを実行
    ticket.stamp(@name)
  end

  def exit(ticket)
    # fare: 実際の運賃料
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end
end