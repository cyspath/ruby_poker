require 'card'
require 'hand'
require 'rspec'

describe Hand do
  subject(:hand) { Hand.new }
<<<<<<< HEAD
  subject(:hand2) { Hand.new }

=======
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
  let(:some_cards) {[Card.new(:A, :diamonds), Card.new(:jack, :spades), Card.new(:three, :clubs)]}

  describe "#receive_cards(n)" do
    it "gets correct number of cards" do
      expect(hand.receive_cards(some_cards).count).to be(3)
    end

    it "adds the cards to current_hand" do
      hand.receive_cards(some_cards)
      expect(hand.current.count).to be(3)
    end
  end

  describe "#drop_cards(idx)" do
    it "drops the card user selects" do
      hand.receive_cards(some_cards)
<<<<<<< HEAD
      hand.drop_cards([1])
=======
      hand.drop_cards(1)
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
      expect(hand.current.count).to be(2)
    end

    it "drops the correct card" do
      hand.receive_cards(some_cards)
      dropped_card = hand.current[1]
<<<<<<< HEAD
      hand.drop_cards([1])
=======
      hand.drop_cards(1)
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
      expect(hand.current).to_not include(dropped_card)
    end
  end

  describe "#current" do
    describe "what is in the current hand" do
      it "should be an empty array when initialized" do
        expect(hand.current).to eq([])
      end

      it "should contain correct num of cards even after receiving new cards" do
        hand.receive_cards(some_cards)
        expect(hand.current.count).to be(3)
      end
    end

  end

  describe "#won_vs(hand2(other_hand)" do

    describe "current hand rankings" do

<<<<<<< HEAD
      let(:hand) { Hand.new }
      let(:hand2) { Hand.new }

      # hand.current .current.
      # hand2.current
      

      it "should rank royal flush highest 1 " do
        hand.current = [Card.new(:A, :hearts), Card.new(:king, :hearts), Card.new(:ten, :hearts), Card.new(:jack, :hearts), Card.new(:queen, :hearts)]

        hand2.current = [Card.new(:four, :clubs), Card.new(:six, :clubs), Card.new(:seven, :clubs), Card.new(:five, :clubs), Card.new(:eight, :clubs)]
=======
      it "should rank royal flush highest 1 " do
        hand = [Card.new(:A, :hearts), Card.new(:king, :hearts), Card.new(:ten, :hearts), Card.new(:jack, :hearts), Card.new(:queen, :hearts)]

        hand2 = [Card.new(:four, :clubs), Card.new(:six, :clubs), Card.new(:seven, :clubs), Card.new(:five, :clubs), Card.new(:eight, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(true)
      end

      it "should rank straight flush 2 " do
<<<<<<< HEAD
        hand.current = [Card.new(:jack, :clubs), Card.new(:jack, :spades), Card.new(:jack, :hearts), Card.new(:five, :clubs), Card.new(:jack, :diamonds)]

        hand2.current = [Card.new(:four, :clubs), Card.new(:six, :clubs), Card.new(:seven, :clubs), Card.new(:five, :clubs), Card.new(:eight, :clubs)]
=======
        hand = [Card.new(:jack, :clubs), Card.new(:jack, :spades), Card.new(:jack, :hearts), Card.new(:five, :clubs), Card.new(:jack, :diamonds)]

        hand2 = [Card.new(:four, :clubs), Card.new(:six, :clubs), Card.new(:seven, :clubs), Card.new(:five, :clubs), Card.new(:eight, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(false)
      end

      it "should rank four of a kind 3 " do
<<<<<<< HEAD
        hand.current = [Card.new(:jack, :clubs), Card.new(:jack, :spades), Card.new(:jack, :hearts), Card.new(:five, :clubs), Card.new(:jack, :diamonds)]

        hand2.current = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:ten, :spades), Card.new(:ten, :diamonds), Card.new(:nine, :clubs)]
=======
        hand = [Card.new(:jack, :clubs), Card.new(:jack, :spades), Card.new(:jack, :hearts), Card.new(:five, :clubs), Card.new(:jack, :diamonds)]

        hand2 = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:ten, :spades), Card.new(:ten, :diamonds), Card.new(:nine, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(true)
      end

      it "should rank full house 4 " do
<<<<<<< HEAD
        hand.current = [Card.new(:two, :hearts), Card.new(:nine, :hearts), Card.new(:three, :hearts), Card.new(:jack, :hearts), Card.new(:A, :hearts)]

        hand2.current = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:ten, :spades), Card.new(:ten, :diamonds), Card.new(:nine, :clubs)]
=======
        hand = [Card.new(:two, :hearts), Card.new(:nine, :hearts), Card.new(:three, :hearts), Card.new(:jack, :hearts), Card.new(:A, :hearts)]

        hand2 = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:ten, :spades), Card.new(:ten, :diamonds), Card.new(:nine, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(false)
      end

      it "should rank flush 5 " do
<<<<<<< HEAD
        hand.current = [Card.new(:two, :hearts), Card.new(:nine, :hearts), Card.new(:three, :hearts), Card.new(:jack, :hearts), Card.new(:A, :hearts)]

        hand2.current = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:eight, :clubs)]
=======
        hand = [Card.new(:two, :hearts), Card.new(:nine, :hearts), Card.new(:three, :hearts), Card.new(:jack, :hearts), Card.new(:A, :hearts)]

        hand2 = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:eight, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(true)
      end

      it "should rank straight 6 " do
<<<<<<< HEAD
        hand.current = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:eight, :clubs)]

        hand2.current = [Card.new(:seven, :hearts), Card.new(:king, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:seven, :clubs)]
=======
        hand = [Card.new(:ten, :hearts), Card.new(:nine, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:eight, :clubs)]

        hand2 = [Card.new(:seven, :hearts), Card.new(:king, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:seven, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(true)
      end

      it "should rank three of a kind 7 " do
<<<<<<< HEAD
        hand.current = [Card.new(:jack, :hearts), Card.new(:king, :clubs), Card.new(:eight, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2.current = [Card.new(:seven, :hearts), Card.new(:king, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:seven, :clubs)]
=======
        hand = [Card.new(:jack, :hearts), Card.new(:king, :clubs), Card.new(:eight, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2 = [Card.new(:seven, :hearts), Card.new(:king, :clubs), Card.new(:seven, :spades), Card.new(:six, :diamonds), Card.new(:seven, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(false)
      end

      it "should rank two pair 8 " do
<<<<<<< HEAD
        hand.current = [Card.new(:jack, :hearts), Card.new(:king, :clubs), Card.new(:eight, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2.current = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:five, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]
=======
        hand = [Card.new(:jack, :hearts), Card.new(:king, :clubs), Card.new(:eight, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2 = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:five, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(true)
      end

      it "should rank one pair 9 " do
<<<<<<< HEAD
        hand.current = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:five, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2.current = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:four, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]
=======
        hand = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:five, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2 = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:five, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(true)
      end

      it "should rank high card lowest 10, but should win vs other high card " do
<<<<<<< HEAD
        hand.current = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:four, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2.current = [Card.new(:five, :hearts), Card.new(:two, :clubs), Card.new(:six, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]
=======
        hand = [Card.new(:five, :hearts), Card.new(:king, :clubs), Card.new(:four, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]

        hand2 = [Card.new(:five, :hearts), Card.new(:two, :clubs), Card.new(:six, :spades), Card.new(:jack, :diamonds), Card.new(:eight, :clubs)]
>>>>>>> fd483fc7fbdf207e7983d6073c8c16c2c89a5444
        expect(hand.won_vs(hand2)).to be(true)
      end

    end
  end

end
