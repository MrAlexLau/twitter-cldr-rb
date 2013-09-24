# encoding: UTF-8

# Copyright 2012 Twitter, Inc
# http://www.apache.org/licenses/LICENSE-2.0

module TwitterCldr
  module Formatters
    module RuleBasedNumberFormatter
      @formatters[:cy] = Welsh = Class.new do
        class << self
          (def renderSpelloutNumberingYear(n)
            is_fractional = (n != n.floor)
            return n.to_s if is_fractional and (n > 1)
            return renderSpelloutNumbering(n) if (n >= 0)
          end
          def renderSpelloutNumbering(n)
            return renderSpelloutCardinalMasculine(n) if (n >= 0)
          end
          def renderSpelloutCardinalMasculine(n)
            is_fractional = (n != n.floor)
            return ("míneas " + renderSpelloutCardinalMasculine(-n)) if (n < 0)
            if is_fractional and (n > 1) then
              return ((renderSpelloutCardinalMasculine(n.floor) + " pointe ") + renderSpelloutCardinalMasculine(n.to_s.gsub(/d*./, "").to_f))
            end
            return n.to_s if (n >= 1000000000000000000)
            if (n >= 1000000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1.0e+15).floor) + " kwadriliwn") + (if (n == 1000000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculine((n % 100000000000000)))
              end))
            end
            if (n >= 1000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000000.0).floor) + " triliwn") + (if (n == 1000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculine((n % 100000000000)))
              end))
            end
            if (n >= 1000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000.0).floor) + " biliwn") + (if (n == 1000000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculine((n % 100000000)))
              end))
            end
            if (n >= 1000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000.0).floor) + " miliwn") + (if (n == 1000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculine((n % 100000)))
              end))
            end
            if (n >= 1000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000.0).floor) + " mil") + ((n == 1000) ? ("") : ((" " + renderSpelloutCardinalMasculine((n % 100))))))
            end
            if (n >= 100) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 100.0).floor) + " cant") + ((n == 100) ? ("") : ((" " + renderSpelloutCardinalMasculine((n % 100))))))
            end
            if (n >= 30) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 30.0).floor) + " deg") + ((n == 30) ? ("") : ((" " + renderSpelloutCardinalMasculine((n % 10))))))
            end
            if (n >= 20) then
              return ("dau ddeg" + ((n == 20) ? ("") : ((" " + renderSpelloutCardinalMasculine((n % 10))))))
            end
            if (n >= 10) then
              return ("un deg" + ((n == 10) ? ("") : ((" " + renderSpelloutCardinalMasculine((n % 10))))))
            end
            return "naw" if (n >= 9)
            return "wyth" if (n >= 8)
            return "saith" if (n >= 7)
            return "chwech" if (n >= 6)
            return "pump" if (n >= 5)
            return "pedwar" if (n >= 4)
            return "tri" if (n >= 3)
            return "dau" if (n >= 2)
            return "un" if (n >= 1)
            return "dim" if (n >= 0)
          end
          def renderSpelloutCardinalMasculineBeforeConsonant(n)
            is_fractional = (n != n.floor)
            if (n < 0) then
              return ("míneas " + renderSpelloutCardinalMasculineBeforeConsonant(-n))
            end
            if is_fractional and (n > 1) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant(n.floor) + " pointe ") + renderSpelloutCardinalMasculineBeforeConsonant(n.to_s.gsub(/d*./, "").to_f))
            end
            return n.to_s if (n >= 1000000000000000000)
            if (n >= 1000000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1.0e+15).floor) + " kwadriliwn") + (if (n == 1000000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 100000000000000)))
              end))
            end
            if (n >= 1000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000000.0).floor) + " triliwn") + (if (n == 1000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 100000000000)))
              end))
            end
            if (n >= 1000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000.0).floor) + " biliwn") + (if (n == 1000000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 100000000)))
              end))
            end
            if (n >= 1000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000.0).floor) + " miliwn") + (if (n == 1000000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 100000)))
              end))
            end
            if (n >= 1000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000.0).floor) + " mil") + (if (n == 1000) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 100)))
              end))
            end
            if (n >= 100) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 100.0).floor) + " cant") + (if (n == 100) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 100)))
              end))
            end
            if (n >= 30) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 30.0).floor) + " deg") + (if (n == 30) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 10)))
              end))
            end
            if (n >= 20) then
              return ("dau ddeg" + (if (n == 20) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 10)))
              end))
            end
            if (n >= 10) then
              return ("un deg" + (if (n == 10) then
                ""
              else
                (" " + renderSpelloutCardinalMasculineBeforeConsonant((n % 10)))
              end))
            end
            return "naw" if (n >= 9)
            return "wyth" if (n >= 8)
            return "saith" if (n >= 7)
            return "chwe" if (n >= 6)
            return "pum" if (n >= 5)
            return "pedwar" if (n >= 4)
            return "tri" if (n >= 3)
            return "dau" if (n >= 2)
            return "un" if (n >= 1)
            return "dim" if (n >= 0)
          end
          def renderSpelloutCardinalFeminine(n)
            is_fractional = (n != n.floor)
            return ("míneas " + renderSpelloutCardinalFeminine(-n)) if (n < 0)
            if is_fractional and (n > 1) then
              return ((renderSpelloutCardinalFeminine(n.floor) + " pointe ") + renderSpelloutCardinalFeminine(n.to_s.gsub(/d*./, "").to_f))
            end
            return n.to_s if (n >= 1000000000000000000)
            if (n >= 1000000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1.0e+15).floor) + " kwadriliwn") + (if (n == 1000000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminine((n % 100000000000000)))
              end))
            end
            if (n >= 1000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000000.0).floor) + " triliwn") + (if (n == 1000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminine((n % 100000000000)))
              end))
            end
            if (n >= 1000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000.0).floor) + " biliwn") + (if (n == 1000000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminine((n % 100000000)))
              end))
            end
            if (n >= 1000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000.0).floor) + " miliwn") + (if (n == 1000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminine((n % 100000)))
              end))
            end
            if (n >= 1000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000.0).floor) + " mil") + ((n == 1000) ? ("") : ((" " + renderSpelloutCardinalFeminine((n % 100))))))
            end
            if (n >= 100) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 100.0).floor) + " cant") + ((n == 100) ? ("") : ((" " + renderSpelloutCardinalFeminine((n % 100))))))
            end
            if (n >= 30) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 30.0).floor) + " deg") + ((n == 30) ? ("") : ((" " + renderSpelloutCardinalFeminine((n % 10))))))
            end
            if (n >= 20) then
              return ("dau ddeg" + ((n == 20) ? ("") : ((" " + renderSpelloutCardinalFeminine((n % 10))))))
            end
            if (n >= 10) then
              return ("un deg" + ((n == 10) ? ("") : ((" " + renderSpelloutCardinalFeminine((n % 10))))))
            end
            return "naw" if (n >= 9)
            return "wyth" if (n >= 8)
            return "saith" if (n >= 7)
            return "chwech" if (n >= 6)
            return "pump" if (n >= 5)
            return "pedair" if (n >= 4)
            return "tair" if (n >= 3)
            return "dwy" if (n >= 2)
            return "un" if (n >= 1)
            return "dim" if (n >= 0)
          end
          def renderSpelloutCardinalFeminineBeforeConsonant(n)
            is_fractional = (n != n.floor)
            if (n < 0) then
              return ("míneas " + renderSpelloutCardinalFeminineBeforeConsonant(-n))
            end
            if is_fractional and (n > 1) then
              return ((renderSpelloutCardinalFeminineBeforeConsonant(n.floor) + " pointe ") + renderSpelloutCardinalFeminineBeforeConsonant(n.to_s.gsub(/d*./, "").to_f))
            end
            return n.to_s if (n >= 1000000000000000000)
            if (n >= 1000000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1.0e+15).floor) + " kwadriliwn") + (if (n == 1000000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 100000000000000)))
              end))
            end
            if (n >= 1000000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000000.0).floor) + " triliwn") + (if (n == 1000000000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 100000000000)))
              end))
            end
            if (n >= 1000000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000000.0).floor) + " biliwn") + (if (n == 1000000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 100000000)))
              end))
            end
            if (n >= 1000000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000000.0).floor) + " miliwn") + (if (n == 1000000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 100000)))
              end))
            end
            if (n >= 1000) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 1000.0).floor) + " mil") + (if (n == 1000) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 100)))
              end))
            end
            if (n >= 100) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 100.0).floor) + " cant") + (if (n == 100) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 100)))
              end))
            end
            if (n >= 30) then
              return ((renderSpelloutCardinalMasculineBeforeConsonant((n / 30.0).floor) + " deg") + (if (n == 30) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 10)))
              end))
            end
            if (n >= 20) then
              return ("dau ddeg" + (if (n == 20) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 10)))
              end))
            end
            if (n >= 10) then
              return ("un deg" + (if (n == 10) then
                ""
              else
                (" " + renderSpelloutCardinalFeminineBeforeConsonant((n % 10)))
              end))
            end
            return "naw" if (n >= 9)
            return "wyth" if (n >= 8)
            return "saith" if (n >= 7)
            return "chwe" if (n >= 6)
            return "pum" if (n >= 5)
            return "pedair" if (n >= 4)
            return "tair" if (n >= 3)
            return "dwy" if (n >= 2)
            return "un" if (n >= 1)
            return "dim" if (n >= 0)
          end)
        end
      end
    end
  end
end