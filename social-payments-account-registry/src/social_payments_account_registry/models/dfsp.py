from typing import List, Optional

from pydantic import BaseModel, ConfigDict


class DfspLevelResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    name: str
    code: str
    level: int
    next_level: Optional["DfspLevelResponse"] = None
    validation_regex: Optional[str] = None


class DfspLevelValueResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    id: int
    name: str
    code: str
    level: Optional[DfspLevelResponse] = None
    next_level: Optional[DfspLevelResponse] = None


class DfspLevelValuesHttpResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    levelValues: List[DfspLevelValueResponse]


class DfspLevelHttpResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    levels: List[DfspLevelResponse]
