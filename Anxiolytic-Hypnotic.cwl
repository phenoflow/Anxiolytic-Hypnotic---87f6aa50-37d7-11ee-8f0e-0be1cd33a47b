cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  anxiolytic-hypnotic-hypnotics---primary:
    run: anxiolytic-hypnotic-hypnotics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  anxiolytic-hypnotic---primary:
    run: anxiolytic-hypnotic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-hypnotics---primary/output
  anxiolytic-hypnotic-*dichloralphenazone---primary:
    run: anxiolytic-hypnotic-*dichloralphenazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic---primary/output
  anxiolytic-hypnotic-*flunitrazepam---primary:
    run: anxiolytic-hypnotic-*flunitrazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-*dichloralphenazone---primary/output
  anxiolytic-hypnotic-flurazepam---primary:
    run: anxiolytic-hypnotic-flurazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-*flunitrazepam---primary/output
  anxiolytic-hypnotic-loprazolam---primary:
    run: anxiolytic-hypnotic-loprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-flurazepam---primary/output
  anxiolytic-hypnotic-lormetazepam---primary:
    run: anxiolytic-hypnotic-lormetazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-loprazolam---primary/output
  anxiolytic-hypnotic-nitrazepam---primary:
    run: anxiolytic-hypnotic-nitrazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-lormetazepam---primary/output
  anxiolytic-hypnotic-triazolam---primary:
    run: anxiolytic-hypnotic-triazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-nitrazepam---primary/output
  anxiolytic-hypnotic-sodium---primary:
    run: anxiolytic-hypnotic-sodium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-triazolam---primary/output
  anxiolytic-hypnotic-zoplicone---primary:
    run: anxiolytic-hypnotic-zoplicone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-sodium---primary/output
  anxiolytic-hypnotic-zolpidem---primary:
    run: anxiolytic-hypnotic-zolpidem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-zoplicone---primary/output
  anxiolytic-hypnotic-zaleplon---primary:
    run: anxiolytic-hypnotic-zaleplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-zolpidem---primary/output
  anxiolytic-hypnotic-anxiolytics---primary:
    run: anxiolytic-hypnotic-anxiolytics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-zaleplon---primary/output
  anxiolytic-hypnotic-alprazolam---primary:
    run: anxiolytic-hypnotic-alprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-anxiolytics---primary/output
  anxiolytic-hypnotic-bromazepam---primary:
    run: anxiolytic-hypnotic-bromazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-alprazolam---primary/output
  anxiolytic-hypnotic-chlordiazepoxide---primary:
    run: anxiolytic-hypnotic-chlordiazepoxide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-bromazepam---primary/output
  anxiolytic-hypnotic-chlormezanone---primary:
    run: anxiolytic-hypnotic-chlormezanone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-chlordiazepoxide---primary/output
  anxiolytic-hypnotic-clobazam---primary:
    run: anxiolytic-hypnotic-clobazam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-chlormezanone---primary/output
  anxiolytic-hypnotic-*ketazolam---primary:
    run: anxiolytic-hypnotic-*ketazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-clobazam---primary/output
  anxiolytic-hypnotic-*medazepam---primary:
    run: anxiolytic-hypnotic-*medazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-*ketazolam---primary/output
  anxiolytic-hypnotic-meprobamate---primary:
    run: anxiolytic-hypnotic-meprobamate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-*medazepam---primary/output
  anxiolytic-hypnotic-oxazepam---primary:
    run: anxiolytic-hypnotic-oxazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-meprobamate---primary/output
  anxiolytic-hypnotic-*prazepam---primary:
    run: anxiolytic-hypnotic-*prazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-oxazepam---primary/output
  anxiolytic-hypnotic-methyprylone---primary:
    run: anxiolytic-hypnotic-methyprylone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-*prazepam---primary/output
  anxiolytic-hypnotic-barbiturates---primary:
    run: anxiolytic-hypnotic-barbiturates---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-methyprylone---primary/output
  epilepsy-anxiolytic-hypnotic---primary:
    run: epilepsy-anxiolytic-hypnotic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: anxiolytic-hypnotic-barbiturates---primary/output
  methylphenobarbital-anxiolytic-hypnotic---primary:
    run: methylphenobarbital-anxiolytic-hypnotic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: epilepsy-anxiolytic-hypnotic---primary/output
  phenobarbital-anxiolytic-hypnotic---primary:
    run: phenobarbital-anxiolytic-hypnotic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: methylphenobarbital-anxiolytic-hypnotic---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: phenobarbital-anxiolytic-hypnotic---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
