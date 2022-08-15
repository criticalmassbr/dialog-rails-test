module UsersHelper

    def format_gender(gender)
        if (gender == "M")
            "Masculino"
        else
            "Feminino"
        end
    end

    def get_brazilian_ufs
        [
            'RO',
            'AC',
            'AM',
            'RR',
            'PA',
            'AP',
            'TO',
            'MA',
            'PI',
            'CE',
            'RN',
            'PB',
            'PE',
            'AL',
            'SE',
            'BA',
            'MG',
            'ES',
            'RJ',
            'SP',
            'PR',
            'SC',
            'RS',
            'MS',
            'MT',
            'GO',
            'DF',
        ]
    end

end
