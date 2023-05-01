from genericApp import db
from dataclasses import dataclass
from datetime import datetime


@dataclass
class Users(db.Model):
    '''Users model to interact with DB Table'''

    __tablename__ = 'users'

    user_id: int = db.Column(db.Integer, primary_key=True)
    email: str = db.Column(db.String(255), nullable=False)
    password: str = db.Column(db.String(255), nullable=False)
    username: str = db.Column(db.String(255), nullable=False)
    profile_img: str = db.Column(db.String(255), nullable=False)

    status: bool = db.Column(db.Boolean, nullable=False, default=True)

    def to_dict(self) -> dict:
        return {
            column.name: getattr(self, column.name).strftime(
                '%Y-%m-%d %H:%M:%S')
            if isinstance(getattr(self, column.name), datetime)
            else getattr(self, column.name)
            for column in self.__table__.columns
        }

class Friends(db.Model):
    '''Friends model to interact with DB Table'''

    __tablename__ = 'friends'

    friend_id: int = db.Column(db.Integer,primary_key=True)
    user_id: int = db.Column(db.Integer, nullable=False)

    
class Multimedia(db.Model):
    '''Multimedia model to interact with DB Table'''

    __tablename__ = 'multimedia'
    
    media_id: int = db.Column(db.Integer, primary_key=True)
    media_url: str = db.Column(db.String(255), nullable=False)
    tag: str = db.Column(db.String(255))
    routes_id: int = db.Column(db.Integer, nullable=False)
    place_id: int = db.Column(db.Integer, nullable=False)

class Routes(db.Model):
    '''Routs model to interact with DB'''
    __tablename__ = 'routes'
    
    route_id: int = db.Column(db.Integer, primary_key=True)
    start_point: str = db.Column(db.String(255), nullable=False)
    final_point: str = db.Column(db.String(255), nullable=False)
    route: str = db.Column(db.String(255), nullable=False)
    user_id: int = db.Column(db.Integer, nullable=False)