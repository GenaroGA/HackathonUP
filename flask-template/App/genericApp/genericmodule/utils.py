from genericApp import db
#from genericApp.models import User
import genericApp.models as mod
from flask_bcrypt import generate_password_hash
from datetime import datetime
import logging


def create_user(email: str, password: str, username: str, profile_img: str) -> mod.Users:
    '''Create a user and return a User object type'''

    try:
        hashed_password = generate_password_hash(password).decode('utf-8')
        user = mod.Users(email=email, username=username,password=hashed_password, profile_img=profile_img)
        db.session.add(user)
        db.session.commit()
        return user
    except Exception as e:
        logging.error(e)
        return None


def get_user(user_id: int) -> dict[str:str]:
    '''Get user function in order to get user's info from DB'''

    try:
        user = mod.Users.query.filter_by(user_id=user_id).first()
        return user.to_dict()
    except Exception as e:
        logging.error(e)
        return None


def update_user(user_id: int, email: str, password: str, username: str, profile_img: str) -> mod.Users:
    '''Update user function in order to update user's info from DB'''

    try:
        user = mod.Users.query.filter_by(user_id=user_id).first()
        if user:
            user.email = email
            user.password = generate_password_hash(password).decode('utf-8')
            user.username = username
            user.profile_img = profile_img
            db.session.commit()
            return user
        else:
            raise ValueError(
                f'User with id: {user_id} does not exist in the database'
            )

    except Exception as e:
        logging.error(e)
        return None


def delete_user(user_id: int) -> mod.Users:
    '''Delete user function in order to delete user's info from DB'''

    try:
        user = mod.Users.query.filter_by(user_id=user_id).first()
        if user:
            user.status = False
            db.session.commit()
            return user
        else:
            raise ValueError(
                f'User with id: {user_id} does not exist in the database'
            )

    except Exception as e:
        logging.error(e)
        return None
