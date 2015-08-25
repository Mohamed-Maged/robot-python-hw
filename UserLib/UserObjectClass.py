__author__ = 'Mohamed_Maged'

from UserObject import UserObject
#from UserLib import *


class UserObjectClass(object):
    def user_object(self, login=None, password=None, firstName=None, lastName=None, accountId=0, email=None,enabled=True,accountAdmin=False,
                    liteUser=None, engageUser=None, company=None, jobTitle=None, phone=None, address1=None,address2=None,country=None, state=None,
                    zip=None, collaborateLogin=None,autoRefreshEnabled=None, autoRefreshInterval=None):

        a=UserObject(login, password, firstName, lastName, accountId, email, enabled, accountAdmin, liteUser, engageUser,
                     company, jobTitle, phone, address1,address2,country, state, zip, collaborateLogin,autoRefreshEnabled, autoRefreshInterval)

        return a