# install and use library jproperties
from jproperties import Properties

class DataTest:
    @staticmethod
    def get_data_test_by_data_key(dataKey):
        p = Properties()
        with open("../Resources/Profile.properties", 'rb') as f:
            p.load(f, "utf-8")
        return p.get(dataKey).data

print(DataTest.get_data_test_by_data_key("usernamecorrect"))
print(DataTest.get_data_test_by_data_key("passwordcorrect"))
