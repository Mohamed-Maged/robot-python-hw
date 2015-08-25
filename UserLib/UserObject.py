__author__ = 'Mohamed_Maged'


class UserObject(object):


    def __init__(self, login, password, firstName, lastName, email,accountId=0, enabled=None, accountAdmin=None,liteUser=None,
                 engageUser=None, company=None, jobTitle=None, phone=None, address1=None, address2=None,country=None, state=None,
                 zip=None, collaborateLogin=None,autoRefreshEnabled=None, autoRefreshInterval=None, userid=None ):

        self.login = login
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.accountId = accountId
        self.email = email
        self.enabled = enabled
        self.accountAdmin = accountAdmin
        self.liteUser = liteUser
        self.engageUser = engageUser
        self.company = company
        self.jobTitle = jobTitle
        self.phone = phone
        self.address1 = address1
        self.address2 = address2
        self.country = country
        self.state = state
        self.zip = zip
        self.collaborateLogin = collaborateLogin
        self.autoRefreshEnabled = autoRefreshEnabled
        self.autoRefreshInterval = autoRefreshInterval
        self.userid = userid

    def __str__(self):
        print("{0}".format(self.__dict__))