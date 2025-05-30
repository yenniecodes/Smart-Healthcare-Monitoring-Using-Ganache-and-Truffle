// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IoTDataStorage {
    struct PatientData {
        uint256 timestamp;
        string patientId;
        string deviceId;
        string heartRate;
        string spo2;
        string temperature;
    }

    PatientData[] public records;
    address public owner;
    uint256 public constant MAX_ENTRIES = 1000;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function storePatientVitals(
        string memory _patientId,
        string memory _deviceId,
        string memory _heartRate,
        string memory _spo2,
        string memory _temperature
    ) public onlyOwner {
        require(records.length < MAX_ENTRIES, "Storage limit reached");

        records.push(PatientData({
            timestamp: block.timestamp,
            patientId: _patientId,
            deviceId: _deviceId,
            heartRate: _heartRate,
            spo2: _spo2,
            temperature: _temperature
        }));
    }

    function getTotalRecords() public view returns (uint256) {
        return records.length;
    }

    function getRecord(uint256 index) public view returns (
        uint256,
        string memory,
        string memory,
        string memory,
        string memory,
        string memory
    ) {
        require(index < records.length, "Index out of bounds");
        PatientData memory r = records[index];
        return (
            r.timestamp,
            r.patientId,
            r.deviceId,
            r.heartRate,
            r.spo2,
            r.temperature
        );
    }
}