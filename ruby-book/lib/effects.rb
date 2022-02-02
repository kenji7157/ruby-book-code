module Effects
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')  
    end
  end

  def self.echo(rate)
    ->(words) do
      words.each_char.map { |c| c == ' ' ? c : c * rate }.join
    end
  end

  def self.loud(rate)
    ->(words) do
      words.split(' ').map{ |word| word.upcase + '!' * rate}.join(' ')
    end
  end
end