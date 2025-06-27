import React from "react";
import {Checkbox} from "@/shared/ui/checkbox";
import {Button} from "@/shared/ui/button";
import Container from "@/shared/ui/wrappers/container";

type GraduateCheckboxesProps = {
    selected: string[];
    onChange: (selected: string[]) => void;
};

const graduateLevels = ["Бакалавриат", "Магистратура", "Аспирантура", "Докторантура"];

const GraduateCheckboxes: React.FC<GraduateCheckboxesProps> = ({ selected, onChange }) => {
    const handleChange = (graduate: string) => {
        const newSelected = selected.includes(graduate)
            ? selected.filter(g => g !== graduate)
            : [...selected, graduate];
        onChange(newSelected);
    };

    const handleReset = () => {
        onChange([]);
    };


    return (
        <aside className="bg-card rounded-2xl w-full lg:w-[300px] mr-0 lg:mr-2 ">
            {graduateLevels.map((graduate, key) => (
                <Container key={key}>
                <div
                    key={key}
                    className=" select-none border-b cursor-default leading-none font-semibold text-2xs"
                >
                    <div className="flex justify-between items-center  px-6 py-4 md:px-6 md:py-4">
                        <div className="p-2">{graduate}</div>
                        <div>
                            <input
                                type="checkbox"
                                checked={selected.includes(graduate)}
                                onChange={() => handleChange(graduate)}
                            />
                        </div>
                    </div>
                </div>
                </Container>
            ))}

            <div className="flex justify-center items-center px-4 py-6">
                <Button
                    onClick={handleReset}
                    className="px-4 py-1 w-max bg-popover hover:bg-muted rounded-xl"
                >
                    Сбросить всё
                </Button>
            </div>
        </aside>
    );
};

export default GraduateCheckboxes;