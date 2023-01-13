"""
Django command to wait for database to become available.
"""

from django.core.management.base import BaseCommand


class Command(BaseCommand):
    """Django command to wait for database to become available"""

    def handle(self, *args, **options):
        pass
