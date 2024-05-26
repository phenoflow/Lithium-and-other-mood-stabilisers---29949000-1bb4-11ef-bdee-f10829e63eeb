# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"60261020","system":"multilex"},{"code":"56314020","system":"multilex"},{"code":"70810020","system":"multilex"},{"code":"75210020","system":"multilex"},{"code":"60388020","system":"multilex"},{"code":"75709020","system":"multilex"},{"code":"48995020","system":"multilex"},{"code":"97038020","system":"multilex"},{"code":"48990020","system":"multilex"},{"code":"61212020","system":"multilex"},{"code":"95197020","system":"multilex"},{"code":"98809020","system":"multilex"},{"code":"95189020","system":"multilex"},{"code":"75677020","system":"multilex"},{"code":"54680020","system":"multilex"},{"code":"66060020","system":"multilex"},{"code":"71163020","system":"multilex"},{"code":"93471020","system":"multilex"},{"code":"69210020","system":"multilex"},{"code":"54569020","system":"multilex"},{"code":"59758020","system":"multilex"},{"code":"4694020","system":"multilex"},{"code":"95360020","system":"multilex"},{"code":"66210020","system":"multilex"},{"code":"69793020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lithium-and-other-mood-stabilisers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lithium-and-other-mood-stabilisers-1000mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lithium-and-other-mood-stabilisers-1000mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lithium-and-other-mood-stabilisers-1000mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
