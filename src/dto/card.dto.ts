import { IsDefined, IsUUID, Length } from "class-validator";

// Card DTO
export class CardDto {
  @IsDefined()
  @IsUUID()
  id: string;

  @IsString()
  @IsDefined()
  @Length(5, 30)
  name: string;

  @IsDefined()
  @IsUUID()
  listId: string;

  @IsDefined()
  @IsUUID()
  userId: string;
}
