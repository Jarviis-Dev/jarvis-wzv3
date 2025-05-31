from ...ext_utils.status_utils import (
    MirrorStatus
)

class Nm3u8Status:
    def __init__(self, listener, gid):
        self.listener = listener
        self._gid = gid
        self.engine = "nm3u8dl"

    def gid(self):
        return self._gid

    def processed_bytes(self):
        return "N/A"

    def size(self):
        return "N/A"

    def status(self):
        return MirrorStatus.STATUS_DOWNLOAD

    def name(self):
        return self.listener.name

    def progress(self):
        return "0%"

    def speed(self):
        return "N/A"

    def eta(self):
        return "N/A"

    def download(self):
        return self