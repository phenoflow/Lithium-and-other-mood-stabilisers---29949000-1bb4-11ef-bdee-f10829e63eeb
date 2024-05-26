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
  lithium-and-other-mood-stabilisers-125mg---primary:
    run: lithium-and-other-mood-stabilisers-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  lithium-and-other-mood-stabilisers-509mg---primary:
    run: lithium-and-other-mood-stabilisers-509mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-125mg---primary/output
  lithium-and-other-mood-stabilisers-1000mg---primary:
    run: lithium-and-other-mood-stabilisers-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-509mg---primary/output
  lithium-and-other-mood-stabilisers-carbagen---primary:
    run: lithium-and-other-mood-stabilisers-carbagen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-1000mg---primary/output
  lithium-and-other-mood-stabilisers-prolonged---primary:
    run: lithium-and-other-mood-stabilisers-prolonged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-carbagen---primary/output
  lithium-and-other-mood-stabilisers-400mg---primary:
    run: lithium-and-other-mood-stabilisers-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-prolonged---primary/output
  lithium-and-other-mood-stabilisers-solution---primary:
    run: lithium-and-other-mood-stabilisers-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-400mg---primary/output
  lithium-and-other-mood-stabilisers-tegretol---primary:
    run: lithium-and-other-mood-stabilisers-tegretol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-solution---primary/output
  lithium-and-other-mood-stabilisers-564mg---primary:
    run: lithium-and-other-mood-stabilisers-564mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-tegretol---primary/output
  lithium-and-other-mood-stabilisers-carbamazepine---primary:
    run: lithium-and-other-mood-stabilisers-carbamazepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-564mg---primary/output
  lithium-and-other-mood-stabilisers-chewtab---primary:
    run: lithium-and-other-mood-stabilisers-chewtab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-carbamazepine---primary/output
  lithium-and-other-mood-stabilisers-450mg---primary:
    run: lithium-and-other-mood-stabilisers-450mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-chewtab---primary/output
  chewable-lithium-and-other-mood-stabilisers---primary:
    run: chewable-lithium-and-other-mood-stabilisers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-450mg---primary/output
  lithium-and-other-mood-stabilisers-liliquid---primary:
    run: lithium-and-other-mood-stabilisers-liliquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: chewable-lithium-and-other-mood-stabilisers---primary/output
  lithium-and-other-mood-stabilisers-orlept---primary:
    run: lithium-and-other-mood-stabilisers-orlept---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-liliquid---primary/output
  lithium-and-other-mood-stabilisers-epilim---primary:
    run: lithium-and-other-mood-stabilisers-epilim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-orlept---primary/output
  lithium-and-other-mood-stabilisers-epival---primary:
    run: lithium-and-other-mood-stabilisers-epival---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-epilim---primary/output
  lithium-and-other-mood-stabilisers-chronosphere---primary:
    run: lithium-and-other-mood-stabilisers-chronosphere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-epival---primary/output
  lithium-and-other-mood-stabilisers-modified---primary:
    run: lithium-and-other-mood-stabilisers-modified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-chronosphere---primary/output
  lithium-and-other-mood-stabilisers-lamotrigine---primary:
    run: lithium-and-other-mood-stabilisers-lamotrigine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-modified---primary/output
  lithium-and-other-mood-stabilisers-150mg---primary:
    run: lithium-and-other-mood-stabilisers-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-lamotrigine---primary/output
  lithium-and-other-mood-stabilisers-gastroresistant---primary:
    run: lithium-and-other-mood-stabilisers-gastroresistant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-150mg---primary/output
  lithium-and-other-mood-stabilisers-priadel---primary:
    run: lithium-and-other-mood-stabilisers-priadel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-gastroresistant---primary/output
  lithium-and-other-mood-stabilisers-300mg---primary:
    run: lithium-and-other-mood-stabilisers-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-priadel---primary/output
  lithium-and-other-mood-stabilisers-250mg---primary:
    run: lithium-and-other-mood-stabilisers-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-300mg---primary/output
  lithium-and-other-mood-stabilisers-ampoule---primary:
    run: lithium-and-other-mood-stabilisers-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-250mg---primary/output
  lithium-and-other-mood-stabilisers-500mg---primary:
    run: lithium-and-other-mood-stabilisers-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-ampoule---primary/output
  valproic-lithium-and-other-mood-stabilisers---primary:
    run: valproic-lithium-and-other-mood-stabilisers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-500mg---primary/output
  lithium-and-other-mood-stabilisers-carbonate---primary:
    run: lithium-and-other-mood-stabilisers-carbonate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: valproic-lithium-and-other-mood-stabilisers---primary/output
  lithium-and-other-mood-stabilisers-suspension---primary:
    run: lithium-and-other-mood-stabilisers-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-carbonate---primary/output
  solvent-lithium-and-other-mood-stabilisers---primary:
    run: solvent-lithium-and-other-mood-stabilisers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-suspension---primary/output
  lithium-and-other-mood-stabilisers-750mg---primary:
    run: lithium-and-other-mood-stabilisers-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: solvent-lithium-and-other-mood-stabilisers---primary/output
  lithium-and-other-mood-stabilisers-suppository---primary:
    run: lithium-and-other-mood-stabilisers-suppository---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-750mg---primary/output
  lithium-and-other-mood-stabilisers-520mg---primary:
    run: lithium-and-other-mood-stabilisers-520mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-suppository---primary/output
  lithium-and-other-mood-stabilisers-camcolit---primary:
    run: lithium-and-other-mood-stabilisers-camcolit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-520mg---primary/output
  lithium-and-other-mood-stabilisers-1018g---primary:
    run: lithium-and-other-mood-stabilisers-1018g---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-camcolit---primary/output
  lithium-and-other-mood-stabilisers-teril---primary:
    run: lithium-and-other-mood-stabilisers-teril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-1018g---primary/output
  lithium-and-other-mood-stabilisers-retard---primary:
    run: lithium-and-other-mood-stabilisers-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-teril---primary/output
  lamictal-lithium-and-other-mood-stabilisers---primary:
    run: lamictal-lithium-and-other-mood-stabilisers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-retard---primary/output
  dispersible-lithium-and-other-mood-stabilisers---primary:
    run: dispersible-lithium-and-other-mood-stabilisers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: lamictal-lithium-and-other-mood-stabilisers---primary/output
  lithium-and-other-mood-stabilisers-200mg---primary:
    run: lithium-and-other-mood-stabilisers-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: dispersible-lithium-and-other-mood-stabilisers---primary/output
  lithium-and-other-mood-stabilisers-depakote---primary:
    run: lithium-and-other-mood-stabilisers-depakote---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-200mg---primary/output
  lithium-and-other-mood-stabilisers-epimaz---primary:
    run: lithium-and-other-mood-stabilisers-epimaz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-depakote---primary/output
  lithium-and-other-mood-stabilisers-capsule---primary:
    run: lithium-and-other-mood-stabilisers-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-epimaz---primary/output
  lithium-and-other-mood-stabilisers-episenta---primary:
    run: lithium-and-other-mood-stabilisers-episenta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-capsule---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: lithium-and-other-mood-stabilisers-episenta---primary/output
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
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
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
