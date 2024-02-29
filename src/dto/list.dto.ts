import { IsDefined, IsUUID, Length } from "class-validator";
// List DTO
export class ListDto {
    @IsDefined()
    @IsUUID()
    id: string;
  
    @IsString()
    @IsDefined()
    @Length(5, 30)
    name: string;
  
    @IsDefined()
    @IsUUID()
    boardId: string;
  }