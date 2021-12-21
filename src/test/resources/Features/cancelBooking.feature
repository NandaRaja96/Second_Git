Feature: Verify the booking confirmation

  Scenario Outline: Verifying the AdactinHotel booking successfull
    Given Go to the AdactinHotelPage
    When Insert details of "<userName>" and "<password>" and login
    When Go to the select hotel page "<location>","<hotel>","<roomType>","<noOfRoom>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childPerRomm>"search the hotel for the information
    When Select the one hotel and continue
    When Give the details "<firstName>","<lastName>","<address>","<creditCardNo>","<ccType>","<cvvNo>" and Book Now
      | cardType         | month     | year |
      | American Express | January   | 2020 |
      | VISA             | February  | 2020 |
      | Master Card      | March     | 2019 |
      | Other            | April     | 2018 |
      | American Express | May       | 2020 |
      | VISA             | June      | 2021 |
      | Master Card      | July      | 2023 |
      | Other            | August    | 2024 |
      | VISA             | September | 2021 |
      | American Express | October   | 2023 |
      | Other            | November  | 2022 |
      | VISA             | December  | 2021 |
    Then Verify the "Booking Confirmation" message get sucessfull

    Examples: 
      | userName    | password   | location | hotel          | roomType | noOfRoom | checkInDate | checkOutDate | adultsPerRoom | childPerRomm | firstName | lastName | address    | creditCardNo     | ccType      | month | year | cvvNo |
      | nandaraja96 | Qwerty@123 | Sydney   | Hotel Sunshine | Deluxe   | 2 - Two  | 16-12-2021  | 17-12-2021   | 2 - Two       | 1 - One      | Nanda     | Raja     | No.123,xxx | 1234567890123456 | Master Card | April | 2022 |   123 |

  Scenario Outline: Verifying the error message on book a hotel page
    Given Go to the AdactinHotelPage
    When Insert details of "<userName>" and "<password>" and login
    When Go to the select hotel page "<location>","<hotel>","<roomType>","<noOfRoom>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childPerRomm>"search the hotel for the information
    When Select the one hotel and continue
    When Book a hotel without entering deatils
    Then Verify the " Please Enter your First Name","Please Enter you Last Name","Please Enter your Address"," Please Enter your 16 Digit Credit Card Number"," Please Select your Credit Card Type"," Please Select your Credit Card Expiry Month"and " Please Enter your Credit Card CVV Number"

    Examples: 
      | userName    | password   | location | hotel          | roomType | noOfRoom | checkInDate | checkOutDate | adultsPerRoom | childPerRomm |
      | nandaraja96 | Qwerty@123 | Sydney   | Hotel Sunshine | Deluxe   | 2 - Two  | 16-12-2021  | 17-12-2021   | 2 - Two       | 1 - One      |
