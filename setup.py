# -*- coding: utf-8 -*-

"""
staty.py
~~~~~~~~
The most functional twitter client for Command line use

"""

from setuptools import setup
INSTALL_REQUIRES = [
        'python-twitter'
        ]
CLASSIFIERS = [
                'Environment :: Web Environment',
                'Intended Audience :: Developers',
                'License :: OSI Approved :: BSD License',
                'Operating System :: OS Independent',
                'Programming Language :: Python',
                'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
                'Topic :: Software Development :: Libraries :: Python Modulies'
                         ]


setup(
        name='staty',
        version='0.1',
        url='http://vinitcool76.github.com/Staty/',
        license='GPL v.3',
        author='Vinit Kumar',
        author_email='vinitcool76@gmail.com',
        discription='twitter client coded in python',
        long_description=__doc__,
        install_requires = INSTALL_REQUIRES,
        zip_safe=False,
        include_platform_data=True,
        platforms='Linux/Unix',
        classifiers=CLASSIFIERS
        )

