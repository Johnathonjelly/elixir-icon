defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 54 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 52
  end

  test "shuffling a deck randomizes the deck" do
   deck = Cards.create_deck
   assert Cards.shuffle(deck) != deck
  end
  
end
