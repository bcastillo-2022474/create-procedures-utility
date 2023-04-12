import { matchAndReplace } from "./matchAndReplace";
import { Prop } from "./types";

export const createProps = (entityString: string) =>
  entityString
    .split(" ")
    .reduce((acc: Prop[], curr: string, i: number, arr: string[]): Prop[] => {

      const [column] = matchAndReplace(curr, /".*"/, '"') || [null];
      if (!column) return acc;

      // if there is a column, then the next word refers to the type
      const type = arr[i + 1];
      acc.push({ column, type });
      return acc;
    }, []);
