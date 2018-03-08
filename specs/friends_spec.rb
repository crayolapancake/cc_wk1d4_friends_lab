require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Dave", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Baywatch",
        things_to_eat: ["soup","bread"]
      }
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      }
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Dave"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      }
    }

    @person5 = {
      name: "Dave",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # 1. For a given person, return their name
  def test_getting_name
    result = get_name(@person5)
    assert_equal("Dave", result)
  end

  # 2. For a given person, return their favourite tv show
  def test_favourite_tv_show
    result = get_show(@person5)
    assert_equal("Scrubs", result)
  end


  # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")

  # 3. For a given person, check if they like a particular food
  # (e.g. the function likes_to_eat(@person3, "stew") should return true, likes_to_eat(@person3, "spinach") should return false)

  def test_person_likes_food
    result = find_if_they_like_food(@person3, "stew")
    assert_equal(true, result)
  end


  # 4. For a given person, add a new name to their list of friends
  def test_add_a_new_friend
    result = add_a_friend(@person4, "Bob" )
    assert_equal(4, result)
  end

  # (e.g. the function add_friend(@person2, "Darren") should add Darren to the friends.)
  # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)


  # 5. For a given person, remove a specific name from their list of friends
  def test_delete_an_old_friend
    result = delete_a_friend(@person3, "Rick")
    assert_equal(1, result)
  end
  # (hint: Same as above, testing for the length of the array should be sufficient)


  # 6. Find the total of everyone's money
  def test_find_total_sum_of_money
    x = find_total_money(@people)
    assert_equal(143, x)
  end
  # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)


  # 7. For two given people, allow the first person to loan a given value of money to the other

  def test_loan_money
    # p @person2[:monies]
    money_lender(@person2, @person3, 1)
    # p @person2[:monies]

    assert_equal(1,  @person2[:monies])
    assert_equal(21,  @person3[:monies])

  end

  # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)


  # 8. Find the set of everyone's favourite food joined together
def test_everyones_fav_food
all_favourite_foods (person, )

end

  # (hint: concatenate the favourites/things_to_eat arrays together)


  # 9. Find people with no friends
-
  def _test_who_has_no_friends

  # (hint: return an array, there might be more people in the future with no friends!)

end
