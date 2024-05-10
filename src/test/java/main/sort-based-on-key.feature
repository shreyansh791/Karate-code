Feature:

  Scenario:
* def jsonArray =
    """
  [
  {
  "locale": "nl-nl",
  "label": "Type Beneficiary begunstigde",
  "toolTip": "Selecteer het type identificatie dat door uw begunstigde is opgegeven."
  },
  {
  "locale": "en-us",
  "label": "Payee ID Type",
  "toolTip": "Select the Identification type that has been provided by your payee."
  },
  {
  "locale": "zh-HANT",
  "label": "受款人 ID 類型",
  "toolTip": "選擇您的受款人所提供之身分證明類別。"
  },
  {
  "locale": "it-it",
  "label": "Tipo di documento d'identità beneficiario",
  "toolTip": "Selezionare il tipo di documento identificativo fornito dal beneficiario."
  },
  {
  "locale": "zh-HANS",
  "label": "收款人身份证件类型",
  "toolTip": "选择收款人提供的身份证件类型。"
  },
  {
  "locale": "cs-cz",
  "label": "Druh průkazu totožnosti příjemce",
  "toolTip": "Vyberte způsob prokázání totožnosti, který Vám poskytl příjemce."
  },
  {
  "locale": "fr-fr",
  "label": "Type de pièce d'identité du bénéficiaire",
  "toolTip": "Sélectionnez le type de pièce d'identité qui vous a été fournie par le bénéficiaire."
  },
  {
  "locale": "ja-jp",
  "label": "受取人IDのタイプ",
  "toolTip": "受取人から提供されたIDタイプを選択します。"
  },
  {
  "locale": "es-es",
  "label": "Tipo de identificación del beneficiario",
  "toolTip": "Seleccione el tipo de identificación proporcionada por el beneficiario."
  },
  {
  "locale": "pl-pl",
  "label": "Rodzaj dowodu tożsamości odbiorcy",
  "toolTip": "Wybierz rodzaj dowodu tożsamości, który podał Twój odbiorca."
  },
  {
  "locale": "en-gb",
  "label": "Payee ID Type",
  "toolTip": "Select the Identification type that has been provided by your payee."
  },
  {
  "locale": "de-ch",
  "label": "Art des Ausweisdokuments des Empfängers",
  "toolTip": "Wählen Sie die Identifizierungsart, die von Ihrem Empfänger angegeben wurde."
  },
  {
  "locale": "en",
  "label": "Payee ID Type",
  "toolTip": "Select the Identification type that has been provided by your payee."
  },
  {
  "locale": "fr-ca",
  "label": "Type de pièce d'identité du bénéficiaire",
  "toolTip": "Sélectionnez le type de pièce d'identité qui vous a été fournie par le bénéficiaire."
  }
  ]

    """
#  * def res = jsonArray.sort((a, b) => a.locale.localeCompare(b.locale));
#    * print res
#  // Define the word to be replaced and the replacement
  * def wordToReplace = "Beneficiary"
  * def replacementWord = "Payee"

#  // Loop through the JSON data and replace the word in the "label" property
  * jsonArray.forEach(item => {if (item.label.includes(wordToReplace)) { item.label = item.label.replace(wordToReplace, replacementWord);}});
    * print jsonArray