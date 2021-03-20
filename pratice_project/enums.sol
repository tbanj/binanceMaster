pragma solidity >= 0.6.0 < 0.7.0;

//  Enumerator is known as enums which is user predefined values
contract EnumSample {

    // creating enumerator
    enum weekDays {
        Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    }

    // enum variable
    weekDays week;
    weekDays choice;

    // assign static value to enum
    weekDays constant defaultValue = weekDays.Sunday;

    // set value for week variable choice
    function setWeekDayChoice()public {
        choice = weekDays.Tuesday;
    }

    // get value for week variable choice
    function getWeekDayChoice() public view returns (weekDays) {
        return choice;
    }

    // get value for week variable defaultValue
    function getWeekDayDefVal() public pure returns (weekDays) {
        return defaultValue;
    }


}