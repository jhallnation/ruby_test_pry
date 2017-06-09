def dna_to_rna dna 
  rna = []
  dna.each do |x|
    if x == 'g'
      rna << 'c'
    elsif x == 'c'
      rna << 'g'
    elsif x == 't'
      rna << 'a'
    else
      rna << 'u'
    end
  end
  p rna
end

dna_to_rna ['g', 'a','t', 'g', 'c' ,'c']
        
# http://exercism.io/exercises/ruby/rna-transcription/readme