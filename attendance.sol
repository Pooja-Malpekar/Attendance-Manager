// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttendanceManager {
    address public teacher;

    struct Student {
        string name;
        bool isRegistered;
        bool isPresent;
    }

    mapping(address => Student) public students;
    address[] public studentAddresses;

    modifier onlyTeacher() {
        require(msg.sender == teacher, "Only the teacher can perform this action.");
        _;
    }

    constructor() {
        teacher = msg.sender;
    }

    function addStudent(address _student, string memory _name) public onlyTeacher {
        require(!students[_student].isRegistered, "Student is already registered.");
        students[_student] = Student(_name, true, false);
        studentAddresses.push(_student);
    }

    function markAttendance(address _student) public onlyTeacher {
        require(students[_student].isRegistered, "Student not registered.");
        students[_student].isPresent = true;
    }

    function checkAttendance(address _student) public view returns (bool) {
        require(students[_student].isRegistered, "Student not registered.");
        return students[_student].isPresent;
    }

    function getAllStudents() public view returns (address[] memory) {
        return studentAddresses;
    }

    function getStudentName(address _student) public view returns (string memory) {
        require(students[_student].isRegistered, "Student not registered.");
        return students[_student].name;
    }

    function removeStudent(address _student) public onlyTeacher {
        require(students[_student].isRegistered, "Student not registered.");
        students[_student].isRegistered = false;
        students[_student].isPresent = false;
    }
}
