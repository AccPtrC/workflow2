{
	"contents": {
		"056831fd-e95f-4ae8-85c4-21239b6af9d8": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "onboard",
			"subject": "onboard",
			"customAttributes": [],
			"name": "onboard",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"4a1ea81f-869f-417a-8fa8-06861920628a": {
					"name": "Assign and Approve Equipment"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"d57e40e1-be25-456d-a9cd-ced939567ca7": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"1ae6d78e-0549-4cbf-bb95-d4b754829c69": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "4a1ea81f-869f-417a-8fa8-06861920628a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"a66ddcd5-3abd-4d91-9403-897cfe628842": {},
				"eddb56fb-20ac-4250-9613-6aa2b65a2d9c": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 238,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "a66ddcd5-3abd-4d91-9403-897cfe628842",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"4a1ea81f-869f-417a-8fa8-06861920628a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Assign and Approve Equipment for ${context.empData.firstName} ${context.empData.lastName}",
			"description": "The manager assigns and approves equipment and relocation of the newly onboarded employee",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/onboard/approvalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Assign and Approve Equipment"
		},
		"a66ddcd5-3abd-4d91-9403-897cfe628842": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 188,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "4a1ea81f-869f-417a-8fa8-06861920628a"
		},
		"d57e40e1-be25-456d-a9cd-ced939567ca7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "4a1ea81f-869f-417a-8fa8-06861920628a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"eddb56fb-20ac-4250-9613-6aa2b65a2d9c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "238,116.75 357.5,116.75",
			"sourceSymbol": "a66ddcd5-3abd-4d91-9403-897cfe628842",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d57e40e1-be25-456d-a9cd-ced939567ca7"
		},
		"1ae6d78e-0549-4cbf-bb95-d4b754829c69": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/onboard/sampledata.json",
			"id": "default-start-context"
		}
	}
}