#encoding: utf-8
namespace :dws_local_office_address_creation_task do
    desc "dws_local_office_address_creation"
    task :local_office_address_insert_task => :environment do
         connection = ActiveRecord::Base.connection()
         connection.execute("TRUNCATE TABLE public.local_office_informations")
         connection.execute("SELECT setval('public.local_office_informations_id_seq', 1, true)")

LocalOfficeInformation.create(code_table_item_id: 2,
                               street_address1: "502 S. Sixth Street ",
                               street_address2: "",
                               street_address_city: 543,
                               street_address_state: 5793,
                               street_address_zip: 71923,
                               street_address_zip_suffix: 6011,
                               mailing_address1: "P.O. Box 620",
                               mailing_address2: "",
                               mailing_address_city: 543,
                               mailing_address_state: 5793,
                               mailing_address_zip: 71923,
                               mailing_address_zip_suffix: 0620,
                               phone_number:"8702462481",
                               fax_number:"8702460344",
                               created_by:19,
                               updated_by:19
                             )

 LocalOfficeInformation.create(code_table_item_id: 3,
                                street_address1: "396 Barnett Drive",
                                street_address2: "",
                               street_address_city: 648,
                               street_address_state: 5793,
                               street_address_zip: "72501",
                               street_address_zip_suffix: "8994",
                               mailing_address1: "P.O. Box 2296",
                               mailing_address2: "",
                               mailing_address_city: 648,
                               mailing_address_state: 5793,
                               mailing_address_zip: "72503",
                               mailing_address_zip_suffix: "2296",
                               phone_number:"8707934156",
                               fax_number:"8707932577",
                               created_by:19,
                               updated_by:19
                               )

 LocalOfficeInformation.create(code_table_item_id: 4,
                                street_address1: "400 Edison Street",
                                street_address2: "",
                               street_address_city: 636,
                               street_address_state: 5793,
                               street_address_zip: "72015",
                                street_address_zip_suffix: "4313",
                               mailing_address1: "P.O. Box 2470",
                               mailing_address2: "",
                               mailing_address_city: 636,
                               mailing_address_state: 5793,
                               mailing_address_zip: "72018",
                                mailing_address_zip_suffix: "2470",
                               phone_number:"5017762974",
                                fax_number:"5017762980",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 5,
                                street_address1: "2825 S. Division Street",
                                street_address2: "AR Northeastern College Campus",
                               street_address_city: 652,
                               street_address_state: 5793,
                               street_address_zip: "72315",
                                street_address_zip_suffix: "0000",
                               mailing_address1: "P.O. Box 1409",
                               mailing_address2: "",
                               mailing_address_city: 652,
                               mailing_address_state: 5793,
                               mailing_address_zip: "72316",
                                mailing_address_zip_suffix: "1409",
                               phone_number:"8707622035",
                                fax_number:"8707620561",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 6,
                                street_address1: "237 Jackson Street SW ",
                                street_address2: "",
                               street_address_city: 724,
                               street_address_state: 5793,
                               street_address_zip: "71701",
                                street_address_zip_suffix: "3941",
                               mailing_address1: "P.O. Box 717",
                               mailing_address2: "",
                               mailing_address_city: 724,
                               mailing_address_state: 5793,
                               mailing_address_zip: "71711",
                                mailing_address_zip_suffix: "0717",
                               phone_number:"8708365024",
                                fax_number:"8708367237",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 7,
                                street_address1: "1500 North Museum Road, Suite 111 ",
                                street_address2: "",
                               street_address_city: 744,
                               street_address_state: 5793,
                               street_address_zip: "72032",
                                street_address_zip_suffix: "4761",
                               mailing_address1: "P.O. Box 189",
                               mailing_address2: "",
                               mailing_address_city: 744,
                               mailing_address_state: 5793,
                               mailing_address_zip: "72033",
                                mailing_address_zip_suffix: "0189",
                               phone_number: "5017309894",
                                fax_number: "5017309869",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 8,
                                street_address1: "523 East Sixth Street",
                                street_address2: "",
                               street_address_city: 815,
                               street_address_state: 5793,
                               street_address_zip: "71730",
                                street_address_zip_suffix: "5175",
                               mailing_address1: "P.O. Box 2038",
                               mailing_address2: "",
                               mailing_address_city: 815,
                               mailing_address_state: 5793,
                               mailing_address_zip: "71731",
                                mailing_address_zip_suffix: "2038",
                               phone_number:"8708626456",
                                fax_number:"8708626962",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 9,
                                street_address1: "2143 West Martin Luther King Blvd.",
                                street_address2: "",
                               street_address_city: 859,
                               street_address_state: 5793,
                               street_address_zip: "72701",
                                street_address_zip_suffix: "6219",
                               mailing_address1: "P.O. Box 1205",
                               mailing_address2: "",
                               mailing_address_city: 859,
                               mailing_address_state: 5793,
                               mailing_address_zip: "72702",
                                mailing_address_zip_suffix: "1205",
                               phone_number:"4795215730",
                                fax_number:"4795211595",
                               created_by:19,
                               updated_by:19)


 LocalOfficeInformation.create(code_table_item_id: 10,
                                street_address1: "300 Eldridge Road, Suite 2",
                                street_address2: "",
                               street_address_city: 865,
                               street_address_state: 5793,
                               street_address_zip: "72335",
                                street_address_zip_suffix: "4901",
                               mailing_address1: "P.O. Box 1059",
                               mailing_address2: "",
                               mailing_address_city: 865,
                               mailing_address_state: 5793,
                               mailing_address_zip: "72336",
                               mailing_address_zip_suffix: "1059",
                               phone_number: "8706332900",
                               fax_number: "8706331710",
                               created_by: 19,
                               updated_by: 19)

 LocalOfficeInformation.create(code_table_item_id: 11,
                                street_address1: "616 Garrison Avenue, Room 101",
                                street_address2: "",
                               street_address_city: 881,
                               street_address_state: 5793,
                               street_address_zip: "72901",
                                street_address_zip_suffix: "2525",
                               mailing_address1: "P.O. Box 1987",
                               mailing_address2: "",
                               mailing_address_city: 881,
                               mailing_address_state: 5793,
                               mailing_address_zip: "72902",
                                mailing_address_zip_suffix: "1987",
                               phone_number:"4797830231",
                                fax_number:"4797832132",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 12,
                                street_address1: "818 North Highway 62-65",
                                street_address2: "",
                               street_address_city: 1038,
                               street_address_state: 5793,
                               street_address_zip: "72601",
                                street_address_zip_suffix: "2100",
                               mailing_address1: "P.O. Box 280",
                               mailing_address2: "",
                               mailing_address_city: 1038,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72602" ,
                                mailing_address_zip_suffix:"0280",
                               phone_number:"8707418236",
                                fax_number:"8707417901",
                               created_by:19,
                               updated_by:19)


 LocalOfficeInformation.create(code_table_item_id: 13,
                                street_address1: "819 Newman Drive",
                                street_address2: "",
                               street_address_city: 1034,
                               street_address_state: 5793,
                               street_address_zip: "72342",
                                street_address_zip_suffix: "8950",
                               mailing_address1: "P.O. Box 279",
                               mailing_address2: "",
                               mailing_address_city: 1034,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72342" ,
                                mailing_address_zip_suffix:"0279",
                               phone_number:"8703387415",
                                fax_number:"8703383494",
                               created_by:19,
                               updated_by:19)


 LocalOfficeInformation.create(code_table_item_id: 14,
                                street_address1: "205 Smith Road, Suite A",
                                street_address2: "",
                               street_address_city: 1036,
                               street_address_state: 5793,
                               street_address_zip: "71801",
                                street_address_zip_suffix: "0000",
                               mailing_address1: "205 Smith Road, Suite A",
                               mailing_address2: "",
                               mailing_address_city: 1036,
                               mailing_address_state: 5793,
                               mailing_address_zip:"71801" ,
                                mailing_address_zip_suffix:"0000",
                               phone_number:"8707773421",
                                fax_number:"8707222912",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 15,
                                street_address1: "2254 Albert Pike Road, Suite A",
                                street_address2: "",
                               street_address_city: 1039,
                               street_address_state: 5793,
                               street_address_zip: "71913",
                                street_address_zip_suffix: "7290",
                               mailing_address1: "P.O. Box 2278",
                               mailing_address2: "",
                               mailing_address_city: 1039,
                               mailing_address_state: 5793,
                               mailing_address_zip:"71914" ,
                                mailing_address_zip_suffix:"2278",
                               phone_number:"5015253450",
                                fax_number:"5015253944",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 16,
                                street_address1: "2 Crestview Plaza",
                                street_address2: "",
                               street_address_city: 1079,
                               street_address_state: 5793,
                               street_address_zip: "72076",
                                street_address_zip_suffix: "7358",
                               mailing_address1: "P.O. Box 39",
                               mailing_address2: "",
                               mailing_address_city: 1079,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72078" ,
                                mailing_address_zip_suffix:"0039",
                               phone_number:"5019823835",
                                fax_number:"5017258782",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 17,
                                street_address1: "2311 East Nettleton Avenue",
                                street_address2: "",
                               street_address_city: 1081,
                               street_address_state: 5793,
                               street_address_zip: "72401",
                                street_address_zip_suffix: "7205",
                               mailing_address1: "P.O. Box 16127",
                               mailing_address2: "",
                               mailing_address_city: 1081,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72403" ,
                                mailing_address_zip_suffix:"6127",
                               phone_number:"8709355594",
                                fax_number:"8709350024",
                               created_by:19,
                               updated_by:19)




 LocalOfficeInformation.create(code_table_item_id: 18,
                                street_address1: "5401 South University",
                                street_address2: "",
                               street_address_city: 1156,
                               street_address_state: 5793,
                               street_address_zip: "72209",
                                street_address_zip_suffix: "0000",
                               mailing_address1: "P.O. Box 4279",
                               mailing_address2: "",
                               mailing_address_city: 1156,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72214" ,
                                mailing_address_zip_suffix:"4279",
                               phone_number:"5013203027",
                                fax_number:"5013203075",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 19,
                                street_address1: "104 Harvey Couch Blvd",
                                street_address2: "",
                               street_address_city: 1229,
                               street_address_state: 5793,
                               street_address_zip: "71753",
                                street_address_zip_suffix: "3921",
                               mailing_address1: "P.O. Box 369",
                               mailing_address2: "",
                               mailing_address_city: 1229,
                               mailing_address_state: 5793,
                               mailing_address_zip:"71754" ,
                                mailing_address_zip_suffix:"0369",
                               phone_number:"8702343440",
                                fax_number:"8702348360",
                               created_by:19,
                               updated_by:19)


 LocalOfficeInformation.create(code_table_item_id: 6052,
                                street_address1: "1735 East Sullenberger Street",
                                street_address2: "",
                               street_address_city: 1267,
                               street_address_state: 5793,
                               street_address_zip: "72104",
                                street_address_zip_suffix: "3832",
                               mailing_address1: "P.O. Box 788",
                               mailing_address2: "",
                               mailing_address_city: 1267,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72104" ,
                                mailing_address_zip_suffix:"0788",
                               phone_number:"5013325461",
                                fax_number:"5013379003",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 20,
                                street_address1: "601 C Highway 71 North    ",
                                street_address2: "",
                               street_address_city: 1237,
                               street_address_state: 5793,
                               street_address_zip: "71953",
                                street_address_zip_suffix: "4393",
                               mailing_address1: "P.O. Box 230",
                               mailing_address2: "",
                               mailing_address_city: 1237,
                               mailing_address_state: 5793,
                               mailing_address_zip:"71953" ,
                                mailing_address_zip_suffix:"0230",
                               phone_number:"4793943060",
                                fax_number:"4793944910",
                               created_by:19,
                               updated_by:19)


 LocalOfficeInformation.create(code_table_item_id: 21,
                                street_address1: "477 South Main Street",
                                street_address2: "",
                               street_address_city: 1263,
                               street_address_state: 5793,
                               street_address_zip: "71655",
                                street_address_zip_suffix: "4817",
                               mailing_address1: "P.O. Box 30",
                               mailing_address2: "",
                               mailing_address_city: 1263,
                               mailing_address_state: 5793,
                               mailing_address_zip:"71657" ,
                                mailing_address_zip_suffix:"0030",
                               phone_number:"8703672476",
                                fax_number:"8703677105",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 22,
                                street_address1: "1058 Highland Circle, #20",
                                street_address2: "",
                               street_address_city: 1242,
                               street_address_state: 5793,
                               street_address_zip: "72654",
                                street_address_zip_suffix: "3251",
                               mailing_address1: "P.O. Box 1945",
                               mailing_address2: "",
                               mailing_address_city: 1242,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72654" ,
                                mailing_address_zip_suffix:"1945",
                               phone_number:"8704252386",
                                fax_number:"8704246056",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 23,
                                street_address1: "7648 Victory Boulevard, Suite B",
                                street_address2: "",
                               street_address_city: 1309,
                               street_address_state: 5793,
                               street_address_zip: "72112",
                                street_address_zip_suffix: "8912",
                               mailing_address1: "7648 Victory Boulevard, Suite B",
                               mailing_address2: "",
                               mailing_address_city: 1309,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72112" ,
                                mailing_address_zip_suffix:"8912",
                               phone_number:"8705233641",
                                fax_number:"8705238678",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 24,
                                street_address1: "1015 Linwood Drive, Suite 4",
                                street_address2: "",
                               street_address_city: 1380,
                               street_address_state: 5793,
                               street_address_zip: "72450",
                                street_address_zip_suffix: "4430",
                               mailing_address1: "P.O. Box 336",
                               mailing_address2: "",
                               mailing_address_city: 1380,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72451" ,
                                mailing_address_zip_suffix:"0336",
                               phone_number:"8702368512",
                                fax_number:"8702369162",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 25,
                                street_address1: "1001 South Tennessee Street",
                                street_address2: "",
                               street_address_city: 1382,
                               street_address_state: 5793,
                               street_address_zip: "71601",
                                street_address_zip_suffix: "5032",
                               mailing_address1: "P.O. Box 8308",
                               mailing_address2: "",
                               mailing_address_city: 1382,
                               mailing_address_state: 5793,
                               mailing_address_zip:"71611" ,
                                mailing_address_zip_suffix:"8308",
                               phone_number:"8705341920",
                                fax_number:"8705347688",
                               created_by:19,
                               updated_by:19)


 LocalOfficeInformation.create(code_table_item_id: 26,
                                street_address1: "100 North Dixieland Road",
                                street_address2: "",
                               street_address_city: 1477,
                               street_address_state: 5793,
                               street_address_zip: "71601",
                                street_address_zip_suffix: "5996",
                               mailing_address1: "P.O. Box 99",
                               mailing_address2: "",
                               mailing_address_city: 1477,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72757" ,
                                mailing_address_zip_suffix:"0099",
                               phone_number:"4796364755",
                                fax_number:"4796210322",
                               created_by:19,
                               updated_by:19)


 LocalOfficeInformation.create(code_table_item_id: 27,
                                street_address1: "104 South Rochester Avenue",
                                street_address2: "",
                               street_address_city: 1483,
                               street_address_state: 5793,
                               street_address_zip: "72801",
                                street_address_zip_suffix: "5337",
                               mailing_address1: "P.O. Box 727",
                               mailing_address2: "",
                               mailing_address_city: 1483,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72811" ,
                                mailing_address_zip_suffix:"0727",
                               phone_number:"4799682784",
                                fax_number:"4799681670",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 28,
                                street_address1: "501 West Arch Avenue",
                                street_address2: "",
                               street_address_city: 1585,
                               street_address_state: 5793,
                               street_address_zip: "72143",
                                street_address_zip_suffix: "5203",
                               mailing_address1: "P.O. Box 727",
                               mailing_address2: "",
                               mailing_address_city: 1585,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72145" ,
                                mailing_address_zip_suffix:"0248",
                               phone_number:"5012688601",
                                fax_number:"5012689166",
                               created_by:19,
                               updated_by:19)


    LocalOfficeInformation.create(code_table_item_id: 29,
                                street_address1: "1702 Hampton Road",
                                street_address2: "",
                               street_address_city: 1639,
                               street_address_state: 5793,
                               street_address_zip: "75503",
                                street_address_zip_suffix: "2598",
                               mailing_address1: "1702 Hampton Road",
                               mailing_address2: "",
                               mailing_address_city: 1639,
                               mailing_address_state: 5793,
                               mailing_address_zip:"75503" ,
                                mailing_address_zip_suffix:"2598",
                               phone_number:"8702164011",
                                fax_number:"9037920983",
                               created_by:19,
                               updated_by:19)

 LocalOfficeInformation.create(code_table_item_id: 30,
                                street_address1: "116 West Elm Street",
                                street_address2: "",
                               street_address_city: 1756,
                               street_address_state: 5793,
                               street_address_zip: "72476",
                                street_address_zip_suffix: "2338",
                               mailing_address1: "P.O. Box 470",
                               mailing_address2: "",
                               mailing_address_city: 1756,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72476" ,
                                mailing_address_zip_suffix:"2338",
                               phone_number:"8708863556",
                                fax_number:"8708866117",
                               created_by:19,
                               updated_by:19)
 LocalOfficeInformation.create(code_table_item_id: 31,
                                street_address1: "Mid-South Community College   ",
                                street_address2: "2000 West Broadway",
                               street_address_city: 1730,
                               street_address_state: 5793,
                               street_address_zip: "72301",
                                street_address_zip_suffix: "3829",
                               mailing_address1: "P.O. Box 1928",
                               mailing_address2: "",
                               mailing_address_city: 1730,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72303" ,
                                mailing_address_zip_suffix:"1928",
                               phone_number:"8704002269",
                                fax_number:"8707357656",
                               created_by:19,
                               updated_by:19)
LocalOfficeInformation.create(code_table_item_id: 6758,
                                street_address1: "809 South Mount Olive Street",
                                street_address2: "",
                               street_address_city: 1587,
                               street_address_state: 5793,
                               street_address_zip: "72761",
                                street_address_zip_suffix: "",
                               mailing_address1: "P.O. Box 768",
                               mailing_address2: "",
                               mailing_address_city: 1587,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72761" ,
                                mailing_address_zip_suffix:"0768",
                               phone_number:"4795245181",
                                fax_number:"4795248384",
                               created_by:19,
                               updated_by:19)
LocalOfficeInformation.create(code_table_item_id: 6757,
                                street_address1: "130 West Waterman",
                                street_address2: "",
                               street_address_city: 800,
                               street_address_state: 5793,
                               street_address_zip: "71639",
                                street_address_zip_suffix: "",
                               mailing_address1: "130 West Waterman",
                               mailing_address2: "",
                               mailing_address_city: 800,
                               mailing_address_state: 5793,
                               mailing_address_zip:"71639" ,
                                mailing_address_zip_suffix:"",
                               phone_number:"8703821017",
                                fax_number:"8703821029",
                               created_by:19,
                               updated_by:19)
LocalOfficeInformation.create(code_table_item_id: 6756,
                                street_address1: "DHS Building",
                                street_address2: "818 M Street/ Hwy 10E",
                               street_address_city: 803,
                               street_address_state: 5793,
                               street_address_zip: "72833",
                                street_address_zip_suffix: "0789",
                               mailing_address1: "P.O. Box 789",
                               mailing_address2: "",
                               mailing_address_city: 803,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72811" ,
                                mailing_address_zip_suffix:"0789",
                               phone_number:"4794952233",
                                fax_number:"4794953643",
                               created_by:19,
                               updated_by:19)
LocalOfficeInformation.create(code_table_item_id: 6755,
                                street_address1: "23 Sherwood Plaza Shopping Center",
                                street_address2: "2000 West Broadway",
                               street_address_city: 722,
                               street_address_state: 5793,
                               street_address_zip: "72830",
                                street_address_zip_suffix: "0774",
                               mailing_address1: "P.O. Box 774",
                               mailing_address2: "",
                               mailing_address_city: 722,
                               mailing_address_state: 5793,
                               mailing_address_zip:"72830" ,
                                mailing_address_zip_suffix:"0774",
                               phone_number:"4797548969 ",
                                fax_number:"4797541166",
                               created_by:19,
                               updated_by:19)

    end
end